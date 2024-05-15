classdef al_subject
    %AL_SUBJECT This class definition file specifies the 
    %   properties and methods of a subject object
    %
    %   A subject object contains general subject information and tests
    %   whether the subject information has correctly been specified.
    
    
    % Properties of the subject object
    % --------------------------------
    
    properties
        
        ID
        age
        gender
        group
        cBal
        rew
        startingBudget
        testDay
        date
        session
        
    end
    
    % Methods of the subject object
    % --------------------------------
    methods
        
        function self = al_subject()
            %AL_GPARAM This function creates a subject object of
            % class al_subject
            
            self.ID = nan; 
            self.age = nan;
            self.gender = nan;
            self.group = nan; 
            self.cBal = nan; 
            self.rew = nan; 
            self.startingBudget = nan;
            self.testDay = nan;
            self.date = nan;
            self.session = 1;
            
        end
    end
    
    methods
        function checkID(self, checkString, ID_len)
            %CHECKID This function tests input related to the subject ID
            %
            %   If ID is incorrectly specified, the function returns
            %   an error. 
            %
            %   Input
            %       self: Subject object
            %       checkString: XX Comment
            %
            %   Output
            %       ~
            
            if ~(numel(self.ID) == ID_len) 
                error('ID: Please use %i digits!', ID_len)
            end

            fileNames = {checkString.name};            
            if  ~isempty(fileNames)
                error('Dataset already exists!');
            end
            
        end
        
        
        function checkGroup(self)
            %CHECKGROUP This function tests input related to the group
            %
            %   If group is incorrectly specified, the function returns
            %   an error. 
            %
            %   Input
            %       self: Subject object
            %
            %   Output
            %       ~


            if self.group ~= 1 && self.group ~= 2
                error('Group: "1" or "2"?');
            end

        end
        
        
        function checkGender(self)
            %CHECKGENDER This function tests input related to the subject's
            % gender
            %
            %   If gender is incorrectly specified, the function returns
            %   an error. 
            %
            %   Input
            %       self: Subject object
            %
            %   Output
            %       ~

            if self.gender ~= 'm' && self.gender ~= 'f' && self.gender ~= 'd'
                error('Gender: "m", "f", or "d"?');
            end
            
        end
        
        function checkCBal(self)
            %CHECKCBAL This function tests input related to
            % counterbalancing
            %
            %   If cbal is incorrectly specified, the function returns
            %   an error. 
            %
            %   Input
            %       self: Subject object
            %
            %   Output
            %       ~

            % Todo: Since different versions have different cBals, 
            % this needs to be more general, maybe based on additional
            % input specifying how many conditions we have
            if self.cBal ~= 1 && self.cBal ~= 2 && self.cBal ~= 3 && self.cBal ~= 4
                error('cBal: 1, 2, 3, or 4?');
            end
            
        end
        
        function checkTestDay(self)
            %CHECKTESTDAY This function tests input related to the test day
            %
            %   If test day is incorrectly specified, the function returns
            %   an error. 
            %
            %   Input
            %       self: Subject object
            %
            %   Output
            %       ~

            if self.testDay ~= 1 && self.testDay ~= 2
                error('Day: 1 or 2?')
            end

        end

        function checkRew(self)
            %CHECKREW This function tests input related to the reward
            %variable
            %
            %   If rewarad is incorrectly specified, the function returns
            %   an error. 
            %
            %   Input
            %       self: Subject object
            %
            %   Output
            %       ~

            if self.rew ~= 1 && self.rew ~= 2
                error('Rew: 1 or 2?')
            end

        end
        
    end
end
